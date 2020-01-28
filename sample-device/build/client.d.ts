import mqtt = require('mqtt');
import { SignAlgorithm } from "./token";
import 'rxjs/add/observable/fromEvent';
import { ReplaySubject } from 'rxjs';
export declare class IoTClient {
    private projectId;
    private region;
    private registryId;
    private deviceId;
    private privateKeyFile;
    private algorithm;
    private port;
    private tokenRefreshMinutes;
    private jwt;
    private tokenSource;
    private client;
    connections$: ReplaySubject<mqtt.IConnackPacket>;
    disconnections$: ReplaySubject<any>;
    messages$: ReplaySubject<any>;
    publishConfirmations$: ReplaySubject<any>;
    constructor(projectId: string, region: string, registryId: string, deviceId: string, privateKeyFile: string, algorithm?: SignAlgorithm, port?: number, tokenRefreshMinutes?: number);
    refresh(): void;
    connect(): void;
    publish(topic: string, payload: string | Buffer): void;
}
