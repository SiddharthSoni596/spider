import json

input_file = '/Users/siddharthsoni/PycharmProjects/spider/evaluation_examples/eval_college_2_v1/filtered_college_2.json'  # your original JSON file
output_file = 'questions_college_2.txt'  # output file

file = open(output_file, 'w')
temp = []
# Load the input JSON
with open(input_file, 'r') as f:
    data = json.load(f)
    for item in data:
        temp.append(item.get('question')+"\n")
file.writelines(temp)
file.close()
