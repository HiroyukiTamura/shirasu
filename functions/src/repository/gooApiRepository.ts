export interface GooApiRepository {
    requestReading(input: string): Promise<string>
}
