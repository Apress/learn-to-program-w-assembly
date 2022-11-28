# Errata for *Learn to Program with Assembly*

In **Section 12.6** [exponentscanf.s scanformat variable is malformed]:

Instead of the following:
```
scanformat:
  .ascii "%d %d\0"
```

The code should be:
```
scanformat:
  .ascii "%Ld %Ld\0"
```

This is so that the fscanf function will replace the entire quad-word memory locations for the stack variables instead of the lesser-significant portion of that memory. Previously, if there was garbage data in the higher-significant double-word, it could affect the exponent function countdown.

***