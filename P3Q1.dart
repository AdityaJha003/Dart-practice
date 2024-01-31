// Make a two-player Rock-Paper-Scissors game against computer. Ask for player’s input, compare them, print out a message to the winner.

import 'dart:io';
import 'dart:math';

void main() {
  print('Welcome to Rock-Paper-Scissors Game!');

  // Get player 1 input
  print('\nPlayer 1, enter your choice (Rock, Paper, or Scissors):');
  String player1Choice = getPlayerChoice();

  // Get player 2 input (computer)
  print('\nComputer is making its choice...');
  String player2Choice = getComputerChoice();

  // Print choices
  print('\nPlayer 1 chose: $player1Choice');
  print('Computer chose: $player2Choice');

  // Determine the winner
  String winner = determineWinner(player1Choice, player2Choice);

  // Print the result
  print('\n$winner');
}

String getPlayerChoice() {
  String? playerChoice;
  while (playerChoice != 'Rock' && playerChoice != 'Paper' && playerChoice != 'Scissors') {
    print('Valid choices are: Rock, Paper, Scissors');
    playerChoice = stdin.readLineSync()!.trim();
  }
  return playerChoice!;
}

String getComputerChoice() {
  List<String> choices = ['Rock', 'Paper', 'Scissors'];
  return choices[Random().nextInt(choices.length)];
}

String determineWinner(String player1, String player2) {
  if (player1 == player2) {
    return 'It\'s a tie!';
  } else if (
      (player1 == 'Rock' && player2 == 'Scissors') ||
      (player1 == 'Paper' && player2 == 'Rock') ||
      (player1 == 'Scissors' && player2 == 'Paper')
  ) {
    return 'Player 1 wins!';
  } else {
    return 'Computer wins!';
  }
}
