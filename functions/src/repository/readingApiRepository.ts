export interface ReadingApiRepository {
    requestReading(input: string): Promise<string>
}
