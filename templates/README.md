# .github

Ce dépôt a pour vocation de décrire votre projet sur la page d'accueil de l'organization GitHub.

Le contenu affiché est rédigé dans le fichier [README.md du dossier profile](./profile/README.md).

# Développement avec Terraform

## Installation

La commande suivante permet d'utiliser la ligne de commande terraform via Docker :
```shell
docker run --rm -it --name terraform -v ~/:/root/ -v $(pwd):/workspace -w /workspace hashicorp/terraform:light
```

Pour une utilisation simplifiée, il est possible de créer un alias :
```shell
alias terraform='docker run --rm -it --name terraform -v ~/:/root/ -v $(pwd):/workspace -w /workspace hashicorp/terraform:light'
```

Avec cet alias, il n'y a plus de différence entre une commande terraform exécutée avec Docker ou avec Terraform CLI.

## Utilisation

### Vérifier et corriger la syntaxe des fichiers `.tf`

```shell
terraform fmt
```

### Vérifier la cohérence de l'infrastructure

```shell
terraform validate
```

### Récupérer un jeton d'authentification à Terraform Cloud en local

```shell
terraform login
```

### Initialiser l'état et les plugins en local

```shell
terraform init
```

### Planifier une exécution pour voir les différences avec l'état précédent de l'infrastructure

```shell
terraform plan
```

## Contribution

### Appliquer la mise à jour de l'infrastructure

Pour que les modifications de la description de l'infrastructure soient appliquées en production, il suffit de publier les changements sur la branche `main`.

## Construit avec

### Langages & Frameworks

- [Terraform](https://www.terraform.io/) est un outil de description d'infrastructure par le code qui permet de créer et de maintenir une infrastructure de manière sûre et prévisible

### Outils

#### CI

- [Github Actions](https://docs.github.com/en/actions) est l'outil d'intégration et de déploiement continu intégré à GitHub.
- Secrets du dépôt :
  - `TF_API_TOKEN` : Le token d'api Terraform Cloud qui permet à la CI d'opérer des actions sur Terraform Cloud

#### Déploiement

- [Terraform Cloud](https://app.terraform.io/) est la plateforme proposée par HashiCorp pour administrer les modifications d'infrastructure
  - Organization : [ORGANIZATION_NAME](https://app.terraform.io/app/ORGANIZATION_NAME/workspaces)
  - Workspaces : `organization`
    - [organization](https://app.terraform.io/app/ORGANIZATION_NAME/workspaces/organization)


## Licence

Voir le fichier [LICENSE.md](./LICENSE.md) du dépôt.