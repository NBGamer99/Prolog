## Implement in prolog the following Statements :
---

## Preuve direct

> Leo mange la viande.

## Preuve refutation

> L'équidé n'est pas un félin

---

## What is Prolog?

Prolog est un langage de programmation logique qui est souvent utilisé pour les systèmes d’inférence et l’intelligence artificielle.

### **1. Preuve directe :**

En Prolog, vous pouvez représenter cette affirmation en utilisant un fait. Un fait en Prolog est une clause sans prédicats. Voici comment vous pouvez le faire :

```
mange(leo, viande).
```

Cela signifie que “Leo mange de la viande”. Vous pouvez interroger ce fait en utilisant la requête suivante :

```
mange(leo, viande).
```

Prolog répondra `true`, ce qui signifie que Leo mange bien de la viande.


### **2. Preuve par refutation :**

Ici, nous avons une affirmation que “l’équidé n’est pas un félin”. En Prolog, nous pouvons représenter cela en utilisant la négation comme échec. Cependant, Prolog ne permet pas la négation directe dans les faits. Nous devons donc d’abord définir ce qu’est un félin, puis utiliser la négation comme échec pour prouver que l’équidé n’est pas un félin. Voici comment vous pouvez le faire :

```
felin(tigre).
felin(lion).
felin(panthere).

equide(cheval).
equide(ane).

non_felin(X) :- \+ felin(X).
```
Maintenant, vous pouvez interroger si un équidé est un félin ou non en utilisant la requête suivante :

```
non_felin(cheval).
```
Prolog répondra `true`, ce qui signifie que le cheval (qui est un équidé) n’est pas un félin.