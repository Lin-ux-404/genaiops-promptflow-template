import json

from promptflow.core import tool


@tool
def convert_to_dict(input_str: str):
    try:
        print("Convert input to dict: " + input_str)
        return json.loads(input_str)
    except Exception as e:
        print("input is not valid, error: {}".format(e))
        return {"category": "None", "evidence": "None"}
