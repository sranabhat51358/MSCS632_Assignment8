# Family Tree Program in Prolog

## Overview

This project implements a simple family tree using Prolog facts and rules. It demonstrates logical inference, pattern matching, and recursion to identify family relationships.

## Requirements

- SWI-Prolog 10.0.2 or compatible version

## Project Structure

```text
MSCS632_Assignment8/
├── family_tree.pl
└── README.md
```

## How to Run

1. Open Terminal and navigate to the project directory:

   ```bash
   cd /path/to/MSCS632_Assignment8
   ```

2. Start the Prolog program:

   ```bash
   swipl -s family_tree.pl
   ```

3. Enter queries at the Prolog prompt (`?-`).

## Sample Queries

**Find children's names:**

```prolog
parent(john, Child).
```

**Find siblings:**

```prolog
sibling(kevin, Sibling).
```

**Check the cousin relationship:**

```prolog
cousin(kevin, olivia).
```

**Find grandparents:**

```prolog
grandparent(Grandparent, kevin).
```

**Find descendants recursively:**

```prolog
descendant(Person, john).
```

Prolog returns matching results based on the defined facts and rules. Use `;` to request additional solutions when prompted.

## Implemented Relationships

- Parent, male, and female facts
- Grandparent relationship
- Sibling relationship
- Cousin relationship
- Recursive descendant identification

## Exit Prolog

Enter the following command:

```prolog
halt.
```
