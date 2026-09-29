package com.zenithcode.arquitetura;

import com.tngtech.archunit.core.importer.ImportOption;
import com.tngtech.archunit.junit.AnalyzeClasses;
import com.tngtech.archunit.junit.ArchTest;
import com.tngtech.archunit.lang.ArchRule;

import static com.tngtech.archunit.lang.syntax.ArchRuleDefinition.noClasses;
import static com.tngtech.archunit.library.Architectures.layeredArchitecture;

/**
 * Gate de Arquitetura Z2A — "Muro de Berlim Arquitetural" (Regra 2 do ZenithCode Lite).
 *
 * Regra determinística e AST-based: o Core Domain NÃO pode depender de infraestrutura,
 * adapters, web ou do framework. Se depender, o build QUEBRA. Sem "achismo" de IA.
 *
 * Pré-requisitos (pom.xml):
 *   <dependency>
 *     <groupId>com.tngtech.archunit</groupId>
 *     <artifactId>archunit-junit5</artifactId>
 *     <version>1.3.0</version>
 *     <scope>test</scope>
 *   </dependency>
 *
 * Ajuste o pacote-base "com.zenithcode" para o seu.
 */
@AnalyzeClasses(
        packages = "com.zenithcode",
        importOptions = ImportOption.DoNotIncludeTests.class
)
class ArquiteturaZ2ATest {

    /** O domínio não conhece infraestrutura/adapters/web. */
    @ArchTest
    static final ArchRule dominio_isolado_de_infra =
            noClasses()
                    .that().resideInAPackage("..domain..")
                    .should().dependOnClassesThat()
                    .resideInAnyPackage("..infrastructure..", "..adapter..", "..web..", "..persistence..")
                    .as("Regra de Dependência (Clean Arch): o Core Domain deve apontar só para dentro.")
                    .because("Domínio acoplado a infra vira caixa-preta indepurável — a 'besteira' barrada na porta (Brandolini).");

    /** O domínio não depende do Spring (mantém o núcleo 'biológico' e portável). */
    @ArchTest
    static final ArchRule dominio_livre_de_framework =
            noClasses()
                    .that().resideInAPackage("..domain..")
                    .should().dependOnClassesThat()
                    .resideInAnyPackage("org.springframework..", "jakarta.persistence..", "javax.persistence..")
                    .as("Núcleo Determinístico: domínio agnóstico de framework (anti-vendor-lock-in).");

    /** Camadas hexagonais respeitadas (ajuste os pacotes ao seu projeto). */
    @ArchTest
    static final ArchRule camadas_hexagonais =
            layeredArchitecture().consideringAllDependencies()
                    .layer("Dominio").definedBy("..domain..")
                    .layer("Aplicacao").definedBy("..application..")
                    .layer("Infra").definedBy("..infrastructure..", "..adapter..", "..web..")
                    .whereLayer("Dominio").mayNotBeAccessedByAnyLayer()   // domínio é o centro; nada "sujo" o chama para dentro
                    .whereLayer("Infra").mayNotBeAccessedByAnyLayer()
                    .as("Ports & Adapters: dependências apontam para o domínio, nunca o contrário.");
}
