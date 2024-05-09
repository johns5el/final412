import random

def karloff_zwick_max_3sat(clauses, num_vars):
    """
    Karloff-Zwick approximation algorithm for the MAX 3SAT problem.
    :param clauses: list of clauses, where each clause is a list of three integers representing literals
    :param num_vars: number of variables in the formula
    :return: a tuple of the assignment and the number of satisfied clauses
    """
    # Generate a random assignment for each variable
    assignment = [random.choice([True, False]) for _ in range(num_vars + 1)]
    
    # Function to evaluate a literal under the current assignment
    def evaluate_literal(literal):
        var = abs(literal)
        return assignment[var] if literal > 0 else not assignment[var]

    # Count the number of satisfied clauses
    satisfied_count = 0
    for clause in clauses:
        if any(evaluate_literal(lit) for lit in clause):
            satisfied_count += 1

    return assignment[1:], satisfied_count

def main():
    import sys
    input = sys.stdin.read
    data = input().splitlines()
    n, m = map(int, data[0].split())
    clauses = [list(map(int, line.split())) for line in data[1:m+1]]

    # Get the solution
    assignment, satisfied = karloff_zwick_max_3sat(clauses, n)

    # Output the number of satisfied clauses
    print(satisfied)
    # Output the assignment of each variable
    for i, a in enumerate(assignment, 1):
        print(f"{i} {'T' if a else 'F'}")

if __name__ == '__main__':
    main()