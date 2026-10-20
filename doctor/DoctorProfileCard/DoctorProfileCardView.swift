
import SwiftUI

struct DoctorProfileCardView: View {

    private var badgeAvailable: some View {
        HStack(spacing: 6) {
            Circle()
                .frame(width: 9, height: 9)

            Text("Available")
                .font(.system(size: 12, weight: .bold))
        }
        .foregroundStyle(Color("success"))
        .padding(.horizontal, 10)
        .padding(.vertical, 6)
        .background(Color("success").opacity(0.12))
        .clipShape(Capsule())
        .padding(20)
    }

    private var hospital: some View {
        HStack {
            Text("Madelyn Hospital")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(.white)

            Spacer()

            Image(systemName: "cross.case.fill")
                .font(.system(size: 22))
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 16)
        .padding(.vertical, 15)
        .background(Color("primary"))
    }

    private var infoFooter: some View {
        VStack(alignment: .leading, spacing: 20) {

            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Dr. Marci Maiden")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(Color("textPrimary"))

                    Text("Internist Specialist")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(Color("textSecondary"))
                }

                Spacer(minLength: 8)

                HStack(spacing: 5) {
                    Image(systemName: "star.fill")
                        .font(.system(size: 18))

                    Text("4.5")
                        .font(.system(size: 16, weight: .semibold))
                }
                .foregroundStyle(Color("rating"))
            }

            HStack(alignment: .firstTextBaseline, spacing: 4) {
                Text("Rp 240.000")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(Color("price"))

                Text("/hours")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(Color("textSecondary"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 16)
        .padding(.top, 24)
        .padding(.bottom, 26)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("surface"))
    }

    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .topLeading) {
                Image("girlDoctor")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 218)
                    .background(Color("background"))
                    .clipShape(
                        UnevenRoundedRectangle(
                            topLeadingRadius: 24,
                            topTrailingRadius: 24
                        )
                    )

                badgeAvailable
            }

            hospital

            infoFooter
        }
        .frame(maxWidth: 340)
        .background(Color("surface"))
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    DoctorProfileCardView()
        .padding(20)
        .background(Color("background"))
}
