package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

const (
	Rock int = iota + 1
	Paper
	Scissors
)

const (
	Lose int = iota + 1
	Draw
	Win
)

func points(r string) int {
	if r == "A" || r == "X" {
		return Rock
	} else if r == "B" || r == "Y" {
		return Paper
	} else {
		return Scissors
	}
}

func main() {
	strategy, err := os.Open("day02_input.txt")
	if err != nil {
		_, _ = fmt.Fprintf(os.Stderr, "Error opening input: %v\n", err)
		os.Exit(1)
	}

	score := 0
	scanner := bufio.NewScanner(strategy)
	for scanner.Scan() {
		round := strings.Fields(scanner.Text())
		opponent, me := points(round[0]), points(round[1])

		if me == Draw {
			score += 3 + opponent
		}

		if opponent == Rock && me == Win {
			score += 6 + Paper
		}

		if opponent == Paper && me == Win {
			score += 6 + Scissors
		}

		if opponent == Scissors && me == Win {
			score += 6 + Rock
		}

		if opponent == Rock && me == Lose {
			score += Scissors
		}

		if opponent == Paper && me == Lose {
			score += Rock
		}

		if opponent == Scissors && me == Lose {
			score += Paper
		}
	}

	if err := scanner.Err(); err != nil {
		_, _ = fmt.Fprintln(os.Stderr, "Another err")
		os.Exit(1)
	}

	_, _ = fmt.Fprintf(os.Stdout, "Score: %d", score)
}
