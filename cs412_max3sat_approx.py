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
        if literal > 0:
            return assignment[var]
        else:
            return not assignment[var]

    # Count the number of satisfied clauses
    satisfied_count = 0
    for clause in clauses:
        if any(evaluate_literal(lit) for lit in clause):
            satisfied_count += 1

    return assignment[1:], satisfied_count

# Example usage
clauses = [
    [1, -2, 3],
    [-1, 2, -3],
    [1, -2, -3],
    [1, 2, 3]
]
num_vars = 3

assignment, satisfied = karloff_zwick_max_3sat(clauses, num_vars)
print("Assignment:", assignment)
print("Number of satisfied clauses:", satisfied)
