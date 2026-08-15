//
//  two.swift
//  Challenge 2 Demo
//
//  Created by Alvin Phyo Htet on 1/8/26.
//

import SwiftUI

struct two: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 28) {
                balanceHeader

                HStack(spacing: 16) {
                    StatCard(
                        title: "Daily income",
                        percent: "32%",
                        subtitle: "My Balance",
                        amount: "12,920.00"
                    )
                    StatCard(
                        title: "Spending",
                        percent: "21%",
                        subtitle: "Spending",
                        amount: "8,205.00"
                    )
                }
                .frame(height: 200)

                VStack(alignment: .leading, spacing: 12) {
                    Text("Transactions History")
                        .font(.title2)
                        .bold()

                    TransactionRow(
                        title: "To Albert",
                        date: "9 May 2026 at 9:00AM",
                        amount: "-$30.24",
                        isReceived: false
                    )
                    TransactionRow(
                        title: "From Sarah",
                        date: "8 May 2026 at 2:45PM",
                        amount: "+$120.00",
                        isReceived: true
                    )
                    TransactionRow(
                        title: "To Coffee House",
                        date: "7 May 2026 at 8:15AM",
                        amount: "-$4.50",
                        isReceived: false
                    )
                    TransactionRow(
                        title: "From Payroll",
                        date: "1 May 2026 at 12:00PM",
                        amount: "+$2,500.00",
                        isReceived: true
                    )
                    TransactionRow(
                        title: "To Netflix",
                        date: "30 Apr 2026 at 6:30PM",
                        amount: "-$15.99",
                        isReceived: false
                    )
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

private struct StatCard: View {
    let title: String
    let percent: String
    let subtitle: String
    let amount: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(title)
                    .font(.subheadline)
                    .bold()
                    .foregroundStyle(.white.opacity(0.9))

                Spacer()

                Menu {
                    Button {
                        print("Clicked")
                    } label: {
                        Label("Withdraw", systemImage: "creditcard.arrow.trianglehead.2.clockwise.rotate.90")
                    }
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.white.opacity(0.8))
                        .padding(2)
                        .contentShape(Rectangle())
                }
            }

            Text(percent)
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundStyle(.white)

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
    let amount: String
    let isReceived: Bool

    private var tint: Color { isReceived ? .green : .red }
    private var icon: String {
        isReceived ? "receipt" : "rectangle.portrait.and.arrow.right"
    }

    var body: some View {
        HStack(spacing: 14) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(tint.opacity(0.15))
                    .frame(width: 48, height: 48)

                Image(systemName: icon)
                    .font(.title2)
                    .foregroundStyle(tint)
            }

            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.headline)
                Text(date)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Text(amount)
                .font(.headline)
                .bold()
                .monospacedDigit()
                .foregroundStyle(tint)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    two()
}
