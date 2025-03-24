import json

input_file = '/Users/siddharthsoni/PycharmProjects/spider/evaluation_examples/eval_college_2_v1/filtered_college_2.json'  # your original JSON file
output_file = 'pred_college_2.sql'  # output file
# Target db_id
target_db_id = 'college_2'

file = open(output_file, 'w')
# Load the input JSON
with open(input_file, 'r') as f:
    data = json.load(f)
    for item in data:
        file.write(item.get('query') + "\t" + target_db_id+"\n")
file.close()
