check "website_checker" {
  data "http" "example" {
    url = "https://www.example1234e4.com"
  }

  assert {
    condition = data.http.example.status_code == 200
    error_message = "Website is not accessible"
  }
}

resource "local_file" "foo" {
  content = "Hello, World!"
  filename = "${path.module}/foo.txt"
}