import sys
import pandas as pd
import re

def extract_pred_queries(text):
    """Extracts all PRED queries from mismatch sections."""
    mismatch_sections = re.findall(r"## REPORT DATA MISMATCH ##(.*?)##", text, re.DOTALL)
    pred_queries = []
    for section in mismatch_sections:
        preds = re.findall(r"PRED\s*:\s*(.+)", section)  # Extracts text after "PRED :"
        pred_queries.extend(preds)
    return set(pred_queries)  # Use a set for fast lookups

def highlight_mismatch(s):
    """Highlight mismatched queries in yellow if they appear in PRED queries."""
    return ['background-color: yellow' if s in pred_queries else '' for s in s]

# Read piped input (file contents)
input_data = sys.stdin.read()

# Extract `PRED` queries from mismatch sections
pred_queries = extract_pred_queries(input_data)

# Load your existing DataFrame (Replace with actual file)
df = pd.read_csv("your_existing_data.csv")  # Ensure this has a 'PredictedQueries' column

# Apply highlighting to the 'PredictedQueries' column
styled_df = df.style.apply(highlight_mismatch, subset=["PredictedQueries"])

# Save to an Excel file with styling
styled_df.to_excel("highlighted_output.xlsx", engine="openpyxl", index=False)

print("Excel file 'highlighted_output.xlsx' generated with highlighted mismatches.")
