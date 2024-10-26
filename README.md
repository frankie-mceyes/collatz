```markdown
# Collatz Conjecture Bash Script

A Bash script that demonstrates the Collatz Conjecture for a given starting integer and iterates through subsequent numbers for a specified count. The script calculates and displays the steps taken for each number to reach `1` according to the rules of the conjecture.

## How It Works

The Collatz Conjecture states that, starting with any positive integer:
1. If the number is even, divide it by `2`.
2. If the number is odd, multiply it by `3` and add `1`.
3. Repeat until the number reaches `1`.

This script:
- Accepts a starting number and a count of iterations as input.
- Calculates the number of steps for each starting integer until it reaches `1`.
- Moves to the next integer and repeats the process until the specified count is reached.
- Displays the steps and results in real-time.

## Usage

To run the script, provide two arguments: the starting number and the count of iterations. You can also use the `--show` flag to enable real-time progress display.

```bash
./collatz.sh [--show] <starting_number> <count>
```

### Parameters

- `<starting_number>`: The integer to start the sequence from.
- `<count>`: The number of subsequent integers to calculate.
- `--show` (optional): Displays each intermediate result in real-time. If omitted, the script will skip intermediate display and complete more quickly.

### Examples

1. Basic usage without real-time display:
   ```bash
   ./collatz.sh 10 5
   ```

2. Using `--show` for real-time display:
   ```bash
   ./collatz.sh --show 10 5
   ```

   or

   ```bash
   ./collatz.sh 10 --show 5
   ```

### Sample Output

```plaintext
Starting from 10
From 10 to 1 in 6 steps!
From 11 to 1 in 14 steps!
From 12 to 1 in 9 steps!
From 13 to 1 in 9 steps!
From 14 to 1 in 17 steps!
```

## Notes

- Ensure the script is executable: `chmod +x collatz.sh`.
- Adjust the `sleep` command in the script if you want to change the update frequency when `--show` is enabled.

## License

This project is open-source and available under the MIT License.
