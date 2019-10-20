# Backend


# Notes

Just getting things set up. To play with this simple setup run this from the repo home directory.

```
$ bin/backend
```

The open this URL in a browser or with curl.

```
localhost:7890/graphql?query={languages{label,frameworks{label}}}&indent=2
```

The data is completely fake, not loaded from the database. Just for testing the GraphQL.
