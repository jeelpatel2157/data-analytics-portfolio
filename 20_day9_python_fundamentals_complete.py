# DAY 8 - PYTHON FUNDAMENTALS COMPLETE
# August 28, 2026
# Foundation for Pandas + SQL Integration

# ==================== PART 1: BASICS ====================
# Variables, Data Types, Math, Conditionals, Loops, Functions

name = "Alice"
age = 25
salary = 50000
is_manager = True

if age >= 18:
    print("You are an adult!")

for i in range(5):
    print(i)

def add(a, b):
    return a + b

# ==================== PART 2: LISTS ====================
# Create, access, modify, loop through

employees = ["Alice", "Bob", "Charlie", "David"]
salaries = [50000, 60000, 75000, 80000]

for emp in employees:
    print(emp)

# List operations
employees.append("Eve")
squares = [i ** 2 for i in range(1, 6)]
even = [n for n in range(10) if n % 2 == 0]

# ==================== PART 3: DICTIONARIES ====================
# Key-value pairs, nested data, professional structures

employee = {
    "name": "Alice",
    "salary": 50000,
    "department": "IT",
    "years": 3
}

print(employee["name"])

# List of dictionaries (PROFESSIONAL DATA STRUCTURE!)
employees_list = [
    {"name": "Alice", "salary": 50000, "dept": "IT"},
    {"name": "Bob", "salary": 60000, "dept": "Sales"},
    {"name": "Charlie", "salary": 75000, "dept": "IT"},
    {"name": "David", "salary": 80000, "dept": "HR"},
]

for emp in employees_list:
    print(f"{emp['name']}: ${emp['salary']}")

# ==================== PART 4: LIST COMPREHENSIONS ====================
# Elegant, professional Python

# Get high earners
high_earners = [emp['name'] for emp in employees_list if emp['salary'] > 70000]
print("High earners:", high_earners)

# Get uppercase names
names = ["alice", "bob", "charlie"]
uppercase = [name.upper() for name in names]

# Calculate bonuses
with_bonus = [s * 1.1 for s in salaries]

# ==================== PART 5: CONDITIONALS ====================
# IF, ELIF, ELSE, AND, OR

score = 85
if score >= 90:
    grade = "A"
elif score >= 80:
    grade = "B"
else:
    grade = "C"

# Boolean logic
age = 25
has_license = True

if age >= 18 and has_license:
    print("You can drive!")

# ==================== PART 6: FUNCTIONS ====================
# Reusable code blocks

def calculate_bonus(salary, percentage):
    bonus = salary * (percentage / 100)
    return bonus

def analyze_salaries(salaries):
    total = sum(salaries)
    average = total / len(salaries)
    highest = max(salaries)
    lowest = min(salaries)
    
    return {
        'total': total,
        'average': average,
        'highest': highest,
        'lowest': lowest
    }

result = analyze_salaries([50000, 60000, 75000, 80000, 55000])
print("Analysis:", result)

# ==================== SUMMARY ====================
# ✅ Variables & Data Types
# ✅ Conditionals (IF/ELIF/ELSE)
# ✅ Loops (FOR/WHILE)
# ✅ Functions (Parameters, Return)
# ✅ Lists (Create, Modify, Comprehensions)
# ✅ Dictionaries (Key-value, Nested)
# ✅ List Comprehensions (Advanced)

# READY FOR PANDAS + SQL! 🚀
