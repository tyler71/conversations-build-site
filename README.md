To compile locally, you can run this command, expect about a 985MB size image

```
docker container run --rm -v $(pwd):/output tyler71/convauto master
docker container run --rm -v $(pwd):/output tyler71/convauto 63ddd97
```

This repo runs the above command and hosts the output as releases, available at https://conv-auto.xyzz.work

