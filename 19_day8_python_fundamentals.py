# DAY 8 - PYTHON FUNDAMENTALS
# August 27, 2026 - Full Python Basics Mastery

# ===== PART 1: BASICS =====
# Variables, Data Types, Math, Conditionals, Loops, Functions

name = "Alice"
age = 25
salary = 50000

if age >= 18:
    print("Adult!")

for i in range(5):
    print(i)

def add(a, b):
    return a + b

# ===== PART 2: LISTS =====
employees = ["Alice", "Bob", "Charlie", "David"]
salaries = [50000, 60000, 75000, 80000]

for emp in employees:
    print(emp)

# ===== PART 3: DICTIONARIES =====
employee = {
    "name": "Alice",
    "salary": 50000,
    "department": "IT"
}

print(employee["name"])

employees_list = [
    {"name": "Alice", "salary": 50000},
    {"name": "Bob", "salary": 60000},
]

for emp in employees_list:
    print(f"{emp['name']}: ${emp['salary']}")

# ===== PART 4: LIST COMPREHENSIONS =====
squares = [i ** 2 for i in range(1, 6)]
even = [n for n in numbers if n % 2 == 0]
high_earners = [emp['name'] for emp in employees_list if emp['salary'] > 70000]
