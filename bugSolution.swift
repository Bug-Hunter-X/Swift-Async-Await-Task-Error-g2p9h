func fetchData() async throws -> Data {
    let (data, response) = try await URLSession.shared.data(from: url)
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw URLError(.badServerResponse)
    }
    return data
}

Task {
    do {
        let data = try await fetchData() //Correctly await the result
        // Process data
    } catch {
        print("Error: \(error)")
    }
}.resume() //Resume the task