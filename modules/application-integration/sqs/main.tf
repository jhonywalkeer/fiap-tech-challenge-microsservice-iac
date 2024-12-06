data "aws_iam_policy_document" "created_sqs_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.order_queue.arn
    ]
  }
}

resource "aws_sqs_queue" "order_queue" {
  name                        = "order.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}

resource "aws_sqs_queue_policy" "order_queue_sqs_policy" {
  queue_url = aws_sqs_queue.order_queue.id
  policy    = data.aws_iam_policy_document.created_sqs_policy.json
}

data "aws_iam_policy_document" "payment_sqs_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.payment_queue.arn
    ]
  }
}

resource "aws_sqs_queue" "payment_queue" {
  name                        = "payment.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}

resource "aws_sqs_queue_policy" "payment_queue_sqs_policy" {
  queue_url = aws_sqs_queue.queue.id
  policy    = data.aws_iam_policy_document.payment_sqs_policy.json
}

data "aws_iam_policy_document" "category_sqs_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.category_queue.arn
    ]
  }
}

resource "aws_sqs_queue" "category_queue" {
  name                        = "category.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}

resource "aws_sqs_queue_policy" "category_queue_sqs_policy" {
  queue_url = aws_sqs_queue.category_queue.id
  policy    = data.aws_iam_policy_document.category_queue_sqs_policy.json
}

data "aws_iam_policy_document" "client_sqs_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.client_queue.arn
    ]
  }
}

resource "aws_sqs_queue" "client_queue" {
  name                        = "client.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}

resource "aws_sqs_queue_policy" "client_sqs_policy" {
  queue_url = aws_sqs_queue.client_queue.id
  policy    = data.aws_iam_policy_document.client_sqs_policy.json
}

data "aws_iam_policy_document" "product_sqs_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.product_queue.arn
    ]
  }
}

resource "aws_sqs_queue" "product_queue" {
  name                        = "product.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}

resource "aws_sqs_queue_policy" "product_sqs_policy" {
  queue_url = aws_sqs_queue.product_queue.id
  policy    = data.aws_iam_policy_document.product_sqs_policy.json
}
