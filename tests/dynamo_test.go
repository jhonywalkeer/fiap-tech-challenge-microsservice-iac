package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestDynamoDBTables(t *testing.T) {

    t.Parallel()

    terraformOptions := &terraform.Options{
        TerraformDir: "../",
        Vars: map[string]interface{}{
            "environment": "test",
            "dynamo_first_table_name": "users",
            "dynamo_second_table_name": "production",
        },
    }

    defer terraform.Destroy(t, terraformOptions)

    terraform.InitAndApply(t, terraformOptions)

    usersTableName := terraform.Output(t, terraformOptions, "dynamo_first_table_name")
    productionTableName := terraform.Output(t, terraformOptions, "dynamo_second_table_name")

    assert.NotEmpty(t, usersTableName)
    assert.NotEmpty(t, productionTableName)
}