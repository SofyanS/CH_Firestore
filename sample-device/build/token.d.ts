export declare enum SignAlgorithm {
    ES256 = "ES256",
    RS256 = "RS256",
}
export declare class TokenGenerator {
    private projectId;
    private privateKeyFile;
    private algorithm;
    private privateKey;
    constructor(projectId: string, privateKeyFile: string, algorithm?: SignAlgorithm);
    create(): string;
}
