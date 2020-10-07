import requests
from behave import *


@given('the endpoint "{endpoint}"')
def step_impl(context, endpoint):
    context.subject = endpoint
    print(context.subject)
    context.endpoint = context.base_url + "/" + endpoint


@when('the User requests it')
def step_impl(context):
    context.response = requests.get(context.endpoint)


@then('the status code is "{status_code}"')
def step_impl(context, status_code):
    print(context.response.status_code)
    assert (int(status_code) == context.response.status_code)


@then('the response header for Content-type is "{header}"')
def step_impl(context, header):
    assert (header == context.response.headers['Content-Type'])
