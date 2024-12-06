package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/aws"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestVPC(t *testing.T) {
	
	t.Parallel()

	terraformOptions := &terraform.Options{
		TerraformDir: "../",
		Vars: map[string]interface{}{
			"environment": "test",
			"project_name": "test",
			"vpc_name": "test-vpc",
		},
	}

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	vpcID := terraform.Output(t, terraformOptions, "vpc_id")
	region := terraform.Output(t, terraformOptions, "region")

	vpc := aws.GetVpcById(t, vpcID, region)

	assert.Equal(t, "test-vpc", vpc.Tags["Name"])
}
