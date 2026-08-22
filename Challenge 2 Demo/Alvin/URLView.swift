import SwiftUI

struct URLView: View {
    @State var url = "www.bubbletea.com"
    @State var isCopied = false
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue, .purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack(spacing: 30) {
                VStack(spacing: 12) {
                    Image(systemName: "link.circle.fill")
                        .font(.system(size: 70))
                        .foregroundStyle(.white)
                    Text("Share with a Friend!")
                        .font(.title2)
                        .foregroundStyle(.white.opacity(0.8))
                    HStack(spacing: 8) {
                        Image(systemName: "link")
                            .foregroundStyle(.blue)
                        Text(url)
                            .bold()
                            .font(.title3)
                            .lineLimit(1)
                            .minimumScaleFactor(0.6)
                        Spacer()
                    }
                    .padding()
                    .background(.white)
                    .clipShape(.rect(cornerRadius: 15))
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                    .padding(.horizontal, 25)
                }
                .padding(.top, 60)
                Button {
                    UIPasteboard.general.string = url
                    withAnimation(.spring(duration: 0.4)) {
                        isCopied = true
                    }
                    Task {
                        try? await Task.sleep(nanoseconds: 2_000_000_000)
                        withAnimation(.spring(duration:0.4)) {
                            isCopied = false
                        }
                    }
                } label: {
                    HStack(spacing: 8) {
                        Image(systemName: isCopied ? "checkmark.circle.fill" : "doc.on.doc")
                            .font(.title3)
                        Text(isCopied ? "Copied!" : "Copy")
                            .font(.title3)
                            .bold()
                    }
                    .frame(width: 150)
                    .padding(.vertical, 14)
                    .background(.white)
                    .foregroundStyle(isCopied ? .green : .blue)
                    .clipShape(.rect(cornerRadius: 15))
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                }
                .buttonStyle(.plain)
                .scaleEffect(isCopied ? 0.95 : 1)
                Spacer()
            }
        }
    }
}

#Preview {
    URLView()
}
