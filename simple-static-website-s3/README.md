# env0 Custom Flow Output Example

Simple Static Website example of a custom flow with an after apply step that calls terraform output.

## ReadMe

Today we're going to be building an example of a custom flow with an after apply step that calls the terraform output. 

This example outputs a value in an afterApply hook. 

This use case for Custom Flow comes in handy for when pipeline finishes so you can grab any of those outputs and use it elsewhere.

(e.g. Getting a Load Balancer url after the resource is created so you can use it in a supergraph.)

Want to learn more about env0's Custom Flow? Visit the docs here:

https://docs.env0.com/docs/custom-flows

## Steps

1. Grab the Output from a TF run
2. Use as a data source

## Changes Made

In this example, we added the following to the env0.yml

    terraformApply:
      after:
        - terraform output url

So now we get
After: Terraform Apply
> terraform output url

And that's all folks!

You can can do something similar and use that output to push to wherever you want.
