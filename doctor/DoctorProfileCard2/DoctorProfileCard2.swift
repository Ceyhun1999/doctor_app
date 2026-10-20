
import SwiftUI

struct DoctorProfileCard2View: View {

    private let teal = Color(red: 0.12, green: 0.49, blue: 0.54)
    private let secondary = Color(red: 0.36, green: 0.38, blue: 0.45)

    // MARK: - Top
    private var top: some View {
        HStack(spacing: 12) {
            Image("boyDoctor")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                .clipShape(
                    .rect(
                        topLeadingRadius: 6,
                        bottomLeadingRadius: 25,
                        bottomTrailingRadius: 6,
                        topTrailingRadius: 25
                    )
                )
                .overlay(alignment: .topLeading) {
                    Circle()
                        .fill(.green.opacity(0.15))
                        .frame(width: 18, height: 18)
                        .overlay {
                            Circle()
                                .fill(.green)
                                .frame(width: 10, height: 10)
                        }
                        .padding(9)
                }

            VStack(alignment: .leading, spacing: 10) {
                Text("Radiant Hospital")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(teal)

                Text("Dr. Raze Invoker")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(.primary)

                Text("Internist Specialist")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }

    // MARK: - Statistics
    private var statistics: some View {
        HStack(spacing: 0) {
            statItem(
                icon: "checkmark.seal.fill",
                title: "Verify",
                subtitle: "Certified"
            )

            Divider()
                .frame(height: 35)

            statItem(
                icon: "briefcase.fill",
                title: "5 Years",
                subtitle: "Experience"
            )

            Divider()
                .frame(height: 35)

            statItem(
                icon: "star.fill",
                title: "4.5",
                subtitle: "Rating"
            )
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 15)
        .overlay {
            RoundedRectangle(cornerRadius: 17)
                .stroke(Color.gray.opacity(0.15), lineWidth: 1)
        }
    }

    private func statItem(
        icon: String,
        title: String,
        subtitle: String
    ) -> some View {
        VStack(spacing: 6) {
            HStack(spacing: 5) {
                Image(systemName: icon)
                    .foregroundStyle(teal)
                    .font(.system(size: 17))

                Text(title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.primary)
            }

            Text(subtitle)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(secondary)
        }
        .lineLimit(1)
        .minimumScaleFactor(0.75)
        .frame(maxWidth: .infinity)
    }

    // MARK: - Bottom
    private var bottom: some View {
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Rp 240.000")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(Color(red: 1, green: 0.30, blue: 0.32))

                Text("/hour")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(secondary)
            }

            Spacer(minLength: 0)

            Button {
                // Booking action
            } label: {
                Text("Book Now")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(teal)
                    .frame(width: 180, height: 52)
                    .background(teal.opacity(0.08))
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(teal, lineWidth: 1)
                    }
            }
        }
    }

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            top
            statistics
            bottom
        }
        .padding(20)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 26))
    }
}

#Preview {
    DoctorProfileCard2View()
        .padding(16)
        .background(Color(red: 0.96, green: 0.96, blue: 0.96))
}
