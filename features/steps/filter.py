from behave import *
import json


@given('the value "{name}"')
def step_impl(context, name):
    context.name = name
    context.endpoint = context.endpoint + "?name=" + name


@then('the response content is correct')
def step_impl(context):
    data_dict = json.loads(json.dumps(context.response.json()))
    assert context.name in data_dict["results"][0]["name"]