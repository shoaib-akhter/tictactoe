# tictactoe

## Tic Tac Toe - Ruby CLI Game

## Overview
This is a **Command-Line Interface (CLI) Tic Tac Toe game** written in **Ruby**, as part of *The Odin Project* curriculum. The game allows two players to take turns placing their symbols (X and O) on a 3×3 board until one player wins or the game ends in a draw.

## Features
- Two-player mode (PvP)
- 3×3 grid-based gameplay
- Turn-based mechanics
- Input validation to prevent invalid moves
- Detects winning conditions and draws
- Option to replay after the game ends
- Clear, user-friendly terminal interface

## Requirements
- Ruby (version 2.7 or later recommended)

## Installation & Setup
1. **Clone the repository**
   ```sh
   git clone https://github.com/your-username/tictactoe.git
   cd tictactoe
   ```
2. **Run the game**
   ```sh
   ruby main.rb
   ```

## How to Play
1. **Start the game:** Run `ruby main.rb`.
2. **Enter player names:** Players will be prompted to enter their names.
3. **Take turns placing symbols:**
   - Players input row and column numbers (0, 1, or 2) to mark their move.
   - Example: Enter `1 1` to place your symbol in the center of the board.
4. **Win or Draw:**
   - The game announces the winner when three symbols align in a row, column, or diagonal.
   - If the board is full without a winner, it declares a draw.
5. **Replay or Quit:** After a game ends, players can choose to restart or exit.

## Example Game Flow
```
Welcome to Tic Tac Toe!
Enter Player 1's name: Alice
Enter Player 2's name: Bob

Current Board:
   |   |  
---+---+---
   |   |  
---+---+---
   |   |  

Alice (X), enter your move (row and column: 0 1 2): 0 0
Current Board:
X  |   |  
---+---+---
   |   |  
---+---+---
   |   |  

Bob (O), enter your move (row and column: 0 1 2): 1 1
...
Alice wins!
Would you like to play again? (y/n):
```

## Future Improvements
- Implement an **AI opponent** for single-player mode.
- Add **custom board sizes** (e.g., 4x4, 5x5).
- Introduce a **score tracking system**.
- Implement a **turn timer** to make the game more dynamic.

## Contributing
Feel free to **fork** this repository, submit **pull requests**, or open **issues** if you have any suggestions for improvements!

## License
This project is open-source and available under the [MIT License](LICENSE).

