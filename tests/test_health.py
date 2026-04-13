import requests


def test_get_posts_returns_status_200():
    response = requests.get("https://jsonplaceholder.typicode.com/posts", timeout=10)

    assert response.status_code == 200


def test_get_posts_returns_expected_contract():
    response = requests.get("https://jsonplaceholder.typicode.com/posts", timeout=10)
    data = response.json()

    assert isinstance(data, list)
    assert len(data) > 0

    first_item = data[0]

    assert "userId" in first_item
    assert "id" in first_item
    assert "title" in first_item
    assert "body" in first_item