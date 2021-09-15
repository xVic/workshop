#!/usr/bin/env bash
# tag::adocSnippet[]
cd $CHE_PROJECTS_ROOT/quarkus-workshop-super-heroes/super-heroes
mvn io.quarkus:quarkus-maven-plugin:2.2.2.Final:create \
    -DprojectGroupId=io.quarkus.workshop.super-heroes \
    -DprojectArtifactId=rest-hero \
    -DclassName="io.quarkus.workshop.superheroes.hero.HeroResource" \
    -Dpath="api/heroes"
# end::adocSnippet[]
