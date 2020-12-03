# ds-tf-s3-access
This module creates an IAM role, the delegation policy and security policy for it. It implements our standard tagging.

## Parameters
*account*, *environment*, *owner*, *created_by*: For the tags

*role_and_policy*: a map, including keys:

    role_name: a string for the role name
    assume_role_policy: the trust policy, in json format
    role_policy: the permissions policy, in json format
    role_policy_name: the name of the role policy

