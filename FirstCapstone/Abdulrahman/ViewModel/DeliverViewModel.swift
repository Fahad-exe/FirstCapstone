// Abdulrahman Alshammari

import Foundation

class DeliverViewModel: ObservableObject {
    @Published var delivers: [DeliverModel] = []
    
    
    // Read
        func fetch() {
            var request = URLRequest(url: URL(string: "https://vceggkauetnfughruuzh.supabase.co/rest/v1/Deliver?select=*")!,timeoutInterval: Double.infinity)
            request.addValue("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZjZWdna2F1ZXRuZnVnaHJ1dXpoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDE1OTMwMjgsImV4cCI6MjAxNzE2OTAyOH0.WY9Lc-Ot1PUa84JKE0MALR5Fqc0j143o5GhQD3ooTDc", forHTTPHeaderField: "apikey")
            request.addValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZjZWdna2F1ZXRuZnVnaHJ1dXpoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDE1OTMwMjgsImV4cCI6MjAxNzE2OTAyOH0.WY9Lc-Ot1PUa84JKE0MALR5Fqc0j143o5GhQD3ooTDc", forHTTPHeaderField: "Authorization")
            request.addValue("sb-access-token=eyJhbGciOiJIUzI1NiIsImtpZCI6ImNTUFRKQStENWFMQ2JLTloiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzAxOTUzMzI4LCJpYXQiOjE3MDE5NDk3MjgsImlzcyI6Imh0dHBzOi8vdmNlZ2drYXVldG5mdWdocnV1emguc3VwYWJhc2UuY28vYXV0aC92MSIsInN1YiI6IjVkZGM2MGQwLThhODItNDNjZi1iMWRhLTMwYzgyY2YzZTY5ZiIsImVtYWlsIjoiYWJkdWxyaG1hbkBleGFtcGxlLmNvbSIsInBob25lIjoiIiwiYXBwX21ldGFkYXRhIjp7InByb3ZpZGVyIjoiZW1haWwiLCJwcm92aWRlcnMiOlsiZW1haWwiXX0sInVzZXJfbWV0YWRhdGEiOnt9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzAxOTQ5NzI4fV0sInNlc3Npb25faWQiOiJlYjJmMGMxOS01YzQ5LTRlMmItYmMyOS1iZTAzNmZhMDdmMDUifQ.KT7AD_AYekwtVlVY72s3RrO9L5xHzxcRf3xgcEEcdFI; sb-refresh-token=bVkwgn_NFiexYmKUo7-foA", forHTTPHeaderField: "Cookie")

            request.httpMethod = "GET"

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {
                    print(String(describing: error))
                    return
                }

                do {
                    let decodedData = try JSONDecoder().decode([DeliverModel].self, from: data)
                    DispatchQueue.main.async {
                        self.delivers = decodedData
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            }

            task.resume()
        }
    }

