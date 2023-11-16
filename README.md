# pre-commit-docker-cpplint

This repository is based on <https://github.com/pre-commit/pre-commit-docker-flake8>

## What is this?

This is a proof-of-concept of providing a [pre-commit](http://pre-commit.com)
hook for cpplint and clang-format via docker.

## How do I use this?

Add this to your `.pre-commit-config.yaml`:

```yaml
repos:
  # For portability I decided to use Docker containers
  - repo: https://github.com/dmitrii-galantsev/pre-commit-docker-cpplint
    rev: 0.0.3
    hooks:
      - id: clang-format-docker
      - id: cpplint-docker
        args: ["--verbose=4"]
```

## Dependencies

- docker
- python
- pre-commit

    sudo apt install docker.io python3-pip
    python3 -m pip install pre-commit
