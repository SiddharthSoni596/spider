import json

input_file = '/Users/siddharthsoni/PycharmProjects/spider/evaluation_examples/eval_college_2_v1/train_spider.json'  # your original JSON file
output_file = 'filtered_college_2.json'  # output file

# Target db_id
target_db_id = 'college_2'

# Load the input JSON
with open(input_file, 'r') as f:
    data = json.load(f)

# Filter items by db_id
filtered_data = [item for item in data if item.get('db_id') == target_db_id]

# Write to a new JSON file
with open(output_file, 'w') as f:
    json.dump(filtered_data, f, indent=4)

print(f"Filtered {len(filtered_data)} items with db_id='{target_db_id}' into {output_file}")
