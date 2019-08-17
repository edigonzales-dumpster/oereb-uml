# oereb-uml

## build docker image
docker build -t sogis/plantuml .

## usage
```
cat test.uml | docker run --rm -i sogis/plantuml > test.svg
```

```
cat oereb-components.uml | docker run --rm -i sogis/plantuml -tpng > oereb-components.png
```



