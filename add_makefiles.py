import os
from shutil import copy

folders = [
	"100-doors", 
	"Factors-of-an-integer", 
	"ABC-Problem", 
	"Fibonacci-sequence", 
	"Ackermann-function", 
	"Greatest-common-divisor", 
	"Arithmetic-geometric-mean", 
	"Greatest-element-of-a-list", 
	"Binary-digits", 
	"Guess-the-number", 
	"Binary-search", 
	"Hailstone-sequence", 
	"Caesar-cipher", 
	"Least-common-multiple", 
	"Factorial", 
	"N-queens-problem", 
	"Remove-duplicate-elements", 
	"Sieve-of-Eratosthenes", 
	"Sorting-algorithms-Merge-sort", 
	"Sorting-algorithms-Quicksort", 
	"Towers-of-Hanoi"
	]

make_folder = "/home/marco/tests/makes_languages"

def main():
	for folder in folders:
		print("Task:", folder)
		for root, dirs, files in os.walk(folder):
			for d in dirs:
				print("\t", "Lang:", d)
				lang_folder = os.path.join(root, d)
				makefile = os.path.join(make_folder, d, "Makefile")
				if os.path.isfile(makefile):
					print("\t\t", "OK")
					copy(makefile, lang_folder)

if __name__ == '__main__':
	main()