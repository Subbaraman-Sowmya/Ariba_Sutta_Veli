import sys

def wash_data(raw_input):
    # The 'Washerman' Logic: Removing the Dark Matter
    clean_output = [item.strip().capitalize() for item in raw_input if item.strip()]
    return clean_output

# The 'Animal' Input (Messy and chaotic)
messy_data = ["  oily_data  ", "", "dark_matter", "  ANIMAL_NATURE  ", "   "]

# The Realization
print("--- Starting the Internal Churning ---")
purified = wash_data(messy_data)

print(f"Result: {purified}")
print("Status: The Water is Clear. Vilanku Manam is stilled.")
