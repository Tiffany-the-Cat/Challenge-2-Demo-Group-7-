import SwiftUI

struct HomeView: View {
    @Binding public var thisPage : PageNames
    var body: some View {
        ScrollView {
            VStack {
                VStack(alignment: .leading, spacing: 28) {
                    balanceHeader
                    
                    NavigationLink {
                        PurchaseView()
                    } label: {
                        VStack(alignment: .leading, spacing: 16) {
                            StatCard(
                                title: "New Drink:",
                                percent: "Golden Pearl Milk Tea",
                                subtitle: "Buy Now for",
                                amount: "5.50"
                            )
                            .frame(maxWidth: .infinity, minHeight: 200)
                        }
                    }
                    NavigationLink {
                        GiftView()
                    } label: {
                        VoucherCard(
                            vouchers: ["$2", "$5", "$10", "$1", "$15", "10%", "20%", "$3", "Free"]
                        )
                    }
                    NavigationLink {
                        HistoryView()
                    } label: {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Payment History")
                                .font(.title2)
                                .bold()
                            
                            TransactionRow(
                                title: "Golden Pearl Milk Tea",
                                date: "15/8/26",
                                detail: "Medium, Less Sugar, 1x Extra Pearls, 2x Chocolate Chips...",
                                amount: "-$6.50"
                            )
                            TransactionRow(
                                title: "Strawberry Matcha Latte",
                                date: "13/8/26",
                                detail: "Large, No Ice, 2x Diced Fruit",
                                amount: "-$6.80"
                            )
                            TransactionRow(
                                title: "Taro Frappuchino",
                                date: "9/8/26",
                                detail: "Small, No Sugar, 1x Milk Pudding",
                                amount: "-$6.20"
                            )
                        }
                    }
                }
                VStack(alignment: .center){
                    NavigationLink {
                        URLView()
                    } label: {
                        Text("Share the joy with your friends!")
                            .font(.system(size: 20))
                            .padding(5)
                            .padding(.horizontal, 5)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.blue, lineWidth: 2))
                            .padding(.vertical, 15)
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
        }
        .background(Color(.systemGroupedBackground))
    }
    
    private var balanceHeader: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .lastTextBaseline, spacing: 5) {
                Text("$")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.blue)
                Text("590.85")
                    .font(.system(size: 64, weight: .bold, design: .rounded))
                    .bold()
            }
            
            HStack {
                Text("Current Balance")
                    .font(.title3)
                    .bold()
                
                Spacer()
                
                Menu {
                    Button {
                        print("Hello")
                    } label: {
                        Label("Add Money", systemImage: "creditcard.rewards.fill")
                    }
                    
                    Button {
                        print("Clicked")
                    } label: {
                        Label("Withdraw Money", systemImage: "creditcard.arrow.trianglehead.2.clockwise.rotate.90")
                    }
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.title2)
                        .foregroundStyle(.secondary)
                        .padding(4)
                        .contentShape(Rectangle())
                }
            }
        }
        .padding(.top, 8)
    }
}

private struct VoucherCard: View {
    let vouchers: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Vouchers (Claim: 1 New)")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white.opacity(0.9))
                
                Spacer()
            }
            
            Spacer(minLength: 0)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 3), spacing: 10) {
                ForEach(vouchers, id: \.self) { voucher in
                    Text(voucher)
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.blue)
                        .frame(maxWidth: .infinity)
                        .frame(height: 52)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            LinearGradient(
                colors: [.blue, Color(red: 0.15, green: 0.25, blue: 0.85)],
                startPoint: .topTrailing,
                endPoint: .bottomLeading
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

private struct StatCard: View {
    let title: String
    let percent: String
    let subtitle: String
    let amount: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(title)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white.opacity(0.9))
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .foregroundStyle(.white.opacity(0.8))
                    .padding(2)
                    .contentShape(Rectangle())
            }
            HStack {
                
                Text(percent)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                
            }
            Spacer(minLength: 0)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(subtitle)
                    .font(.footnote)
                    .foregroundStyle(.blue.opacity(0.7))
                
                HStack(alignment: .lastTextBaseline, spacing: 3) {
                    Text("$")
                        .font(.subheadline)
                        .bold()
                    Text(amount)
                        .font(.title3)
                        .bold()
                }
                .foregroundStyle(.primary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 14))
        }
        .padding(16)
        .background(
            LinearGradient(
                colors: [.blue, Color(red: 0.15, green: 0.25, blue: 0.85)],
                startPoint: .topTrailing,
                endPoint: .bottomLeading
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

private struct TransactionRow: View {
    let title: String
    let date: String
    let detail: String
    let amount: String
    
    var body: some View {
        HStack(spacing: 14) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.red.opacity(0.15))
                    .frame(width: 48, height: 48)
                
                Image(systemName: "cup.and.saucer.fill")
                    .font(.title2)
                    .foregroundStyle(.red)
            }
            
            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: 8) {
                    Text(title)
                        .font(.headline)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Text(date)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                Text(detail)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
            
            Spacer(minLength: 8)
            
            Text(amount)
                .font(.headline)
                .bold()
                .monospacedDigit()
                .foregroundStyle(.red)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
