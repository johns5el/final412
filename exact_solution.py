from itertools import product
"""
name: Elizabeth Johnson
"""
# All modules for CS 412 must include a main method that allows it
# to imported and invoked from other python scripts
def main():
    numVariable, numClauses = [int(x) for x in input().split(" ")]

    # store clauses like [[1, -2, 3][-1, 2, -3]]
    clauses = []
    for _ in range(numClauses):
        clauses.append([int(x) for x in input().split(" ")])

    # get all possible combinations of true/false for the number of variables
    combos = product([True, False], repeat=numVariable)

    maxClausesAreTrue = 0
    maxClauseCombo = None

    # for each combination, check how many clauses evaluate to true
    for combo in combos:
        vertSet = {} # set of the vertices when they first appear to keep track of the combo will have set [1, -2, 3]
        isClauseTrue = [] # holds whether each clause is true or false
        for clause in clauses:
            isTrue = False
            for vertex in clause:
                if abs(vertex) not in vertSet:
                    vertSet[abs(vertex)] = vertex

                if vertSet[abs(vertex)] == vertex: # the vertex has the same cardinality as the first occuring instance
                    isTrue = isTrue or combo[abs(vertex) - 1]
                else:
                    isTrue = isTrue or not combo[abs(vertex) - 1]

            isClauseTrue.append(isTrue)

        # after all the clauses are done, count how many report to true
        count_true_clauses = sum(1 if x else 0 for x in isClauseTrue)

        # if more of the clauses are true than before, save new max and combo
        if count_true_clauses > maxClausesAreTrue:
            maxClausesAreTrue = count_true_clauses
            maxClauseCombo = combo
            if count_true_clauses == numClauses:
                break

    # print the max number of clauses that are true
    print(maxClausesAreTrue)
    # for each vertex, print whether it should be true or false to get the max
    for i in range(1, numVariable + 1):
        print(i, str(maxClauseCombo[i - 1])[0])

    pass


if __name__ == "__main__":
    main()
