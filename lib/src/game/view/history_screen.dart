import 'package:dominoes/l10n/l10n.dart';
import 'package:dominoes/src/game/cubit/old_games_cubit.dart';
import 'package:dominoes/src/game/database/game.dart';
import 'package:dominoes/src/game/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  HistoryScreenState createState() => HistoryScreenState();
}

class HistoryScreenState extends State<HistoryScreen> {
  @override
  void initState() {
    super.initState();

    // Fetch the game IDs as soon as the screen is initialized
    context.read<OldGamesCubit>().fetchOldGamesIds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.old_games),
      ),
      drawer: const MyDrawer(),
      // Use BlocBuilder to listen for changes in the list of game IDs
      body: BlocBuilder<OldGamesCubit, List<int>>(
        builder: (context, gameIds) {
          // Build the FutureBuilder based on the game IDs
          return FutureBuilder<List<Game?>>(
            future: context.read<OldGamesCubit>().fetchGames(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text(context.l10n.no_old_games));
              } else {
                // Filter out null games and build the list
                final nonNullGames = snapshot.data!.whereType<Game>().toList();

                return ListView.builder(
                  itemCount: nonNullGames.length,
                  itemBuilder: (context, index) {
                    final game = nonNullGames[index];
                    return _buildGameCard(game, context, index);
                  },
                );
              }
            },
          );
        },
      ),
    );
  }

  Widget _buildGameCard(Game game, BuildContext context, int gameIndex) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Team Names and Final Score
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${game.teamAname} vs ${game.teamBname}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${game.rounds.fold<int>(0, (prev, round) => prev + round.teamAscore!)} - ${game.rounds.fold<int>(0, (prev, round) => prev + round.teamBscore!)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Divider(height: 20),

            // List of Rounds
            ...game.rounds.map((round) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${context.l10n.round} ${game.rounds.indexOf(round) + 1}',
                    ),
                    Text(
                      '${round.teamAscore}',
                      style: TextStyle(
                        color: round.teamAscore! > round.teamBscore!
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                    const Text('-'),
                    Text(
                      '${round.teamBscore}',
                      style: TextStyle(
                        color: round.teamBscore! > round.teamAscore!
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            }), // Convert Iterable<Padding> to List<Padding>
          ],
        ),
      ),
    );
  }
}
