//
//  OnboardingView.swift
//  Restart
//
//  Created by Eduardo Dini on 04/01/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    // MARK: - BODY
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()

            VStack(spacing: 20) {
                // MARK: - HEADER

                Spacer()

                VStack(spacing: 0) {
                    Text("Share")
                        .font(.system(size: 60, weight: .heavy))
                        .foregroundColor(.white)

                    Text("""
                 It's not how much we give but
                 how much love we put into giving.
                 """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }

                // MARK: - BODY

                ZStack {
                    CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)

                    Image("character-1")
                        .resizable()
                        .scaledToFit()

                }

                Spacer()

                // MARK: - FOOTER

                ZStack {
                    // PARTS OF THE CUSTOM BUTTON

                    // 1. BACKGROUND (STATIC)

                    Capsule()
                        .fill(.white.opacity(0.2))

                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)

                    // 2. CALL-TO-ACTION (STATIC)

                    Text("Get Started")
                        .font(.system(.title3, design: .rounded, weight: .bold))
                        .foregroundColor(.white)
                        .offset(x: 20)

                    // 3. CAPSULE (DYNAMIC WIDTH)

                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }

                    // 4. CIRCLE (DRAGGABLE)

                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }

                        Spacer()
                    }

                }
                .frame(height: 80, alignment: .center)
                .padding()

            }
        }
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
