# uswidi

## Build
Build a new release:
```MIX_ENV=prod mix release```

## Deploy

Push to the upstream that was defined when creating the app (not entirely sure how this works exactly)
```git push gigalixir```

## Migrating on the server

Only once you need to configure your/a SSH key.

```gigalixir account:ssh_keys:add "$(cat ~/.ssh/id_rsa.pub)"```

Then you can run:

```gigalixir ps:migrate```


## Adding images
We expect images to be png so conver them with:
```mogrify -format png *.jpg```
```mogrify -format png *.jpeg```
Then add them to priv/static/images