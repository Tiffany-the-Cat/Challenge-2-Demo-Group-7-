import SwiftUI

struct Test: View {
    @State private var people = [Person]()
    var body: some View {
        VStack {
            List(people) { person in
                HStack(spacing: 20) {
                    Text(person.first)
                    
                    Spacer()
                    
                    Text(person.last)
                }
            }
        }
        .onAppear {
            people = decode("people.json")
        }
    }
}

#Preview {
    Test()
}
