//
//  ContentView.swift
//  MyFirstApp
//
//  Created by 소범석 on 2022/08/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSelect = false
    @State private var showSelect1 = false
    @State private var tmp = 0
    @State private var tmpt = 0
    @State private var selectImage: String = ""
    @State private var selectText: String = ""
    @State private var tmpImage: String = ""
    @State private var tmpText: String = ""
    @State private var selectImage1: String = ""
    @State private var selectText1: String = ""
    
    let question = "Q1. 인생에서 가장 중요한 것은 무엇인가요?"
    let question1 = "Q2. 지금 가장 여행가고 싶은 곳은?"
    
    let optionImages = ["heart", "person", "gamecontroller", "person"]
    let optionImages1 = ["drop", "tray.2", "note.text", "car"]
    
    let optionTexts = ["사랑", "우정", "게임", "운동"]
    let optionTexts1 = ["계곡", "사랑", "야구장", "도심"]
    
    var body: some View {
        
        // question
        VStack() {
            Text(question)
                .padding(.top)
            
            // showSelect Tapped
            if showSelect {
                HStack {
                    Image(systemName: selectImage)
                    Text(selectText)
                }
                VStack {
                    HStack {
                        Button(action: {
                            tmpImage = selectImage
                            tmpText = selectText
                            tmp = 0
                            selectImage = optionImages[tmp]
                            selectText = optionTexts[tmp]
                            // 만약 같은 버튼을 눌렀다면 토글 실행하기
                            if tmpImage == selectImage || tmpText == selectText {
                                self.showSelect.toggle()
                            }
                            tmp = 0
                            tmpt = tmp
                        }) {
                            Image(systemName: optionImages[tmp])
                            Text(optionTexts[tmp])
                        }
                        Button(action: {
                            tmpImage = selectImage
                            tmpText = selectText
                            tmp = 1
                            selectImage = optionImages[tmp]
                            selectText = optionTexts[tmp]
                            // 만약 같은 버튼을 눌렀다면 토글 실행하기
                            if tmpImage == selectImage && tmpText == selectText {
                                self.showSelect.toggle()
                            }
                            tmp = 0
                            tmpt = tmp
                        }) {
                            Image(systemName: optionImages[tmp + 1])
                            Text(optionTexts[tmp + 1])
                        }
                    }
                    HStack {
                        Button(action: {
                            tmpImage = selectImage
                            tmpText = selectText
                            tmp = 2
                            selectImage = optionImages[tmp]
                            selectText = optionTexts[tmp]
                            // 만약 같은 버튼을 눌렀다면 토글 실행하기
                            if tmpImage == selectImage && tmpText == selectText {
                                self.showSelect.toggle()
                            }
                            tmp = 0
                            tmpt = tmp
                        }) {
                            Image(systemName: optionImages[tmp + 2])
                            Text(optionTexts[tmp + 2])
                        }
                        Button(action: {
                            tmpImage = selectImage
                            tmpText = selectText
                            tmp = 3
                            selectImage = optionImages[tmp]
                            selectText = optionTexts[tmp]
                            // 만약 같은 버튼을 눌렀다면 토글 실행하기
                            if tmpImage == selectImage && tmpText == selectText {
                                self.showSelect.toggle()
                            }
                            tmp = 0
                            tmpt = tmp
                        }) {
                            Image(systemName: optionImages[tmp + 3])
                            Text(optionTexts[tmp + 3])
                        }
                    }
                }.padding(.bottom)
            } else {
                // showSelect untapped
                VStack {
                    HStack {
                        Button(action: {
                            tmpt = 0
                            selectImage = optionImages[tmpt]
                            selectText = optionTexts[tmpt]
                            self.showSelect.toggle()
                            tmpt = 0
                        }) {
                            Image(systemName: optionImages[tmpt])
                            Text(optionTexts[tmpt])
                        }
                        Button(action: {
                            tmpt = 1
                            selectImage = optionImages[tmpt]
                            selectText = optionTexts[tmpt]
                            self.showSelect.toggle()
                            tmpt = 0
                        }) {
                            Image(systemName: optionImages[tmpt + 1])
                            Text(optionTexts[tmpt + 1])
                        }
                    }
                    HStack {
                        Button(action: {
                            tmpt = 2
                            selectImage = optionImages[tmpt]
                            selectText = optionTexts[tmpt]
                            self.showSelect.toggle()
                            tmpt = 0
                        }) {
                            Image(systemName: optionImages[tmpt + 2])
                            Text(optionTexts[tmpt + 2])
                        }
                        Button(action: {
                            tmpt = 3
                            selectImage = optionImages[tmpt]
                            selectText = optionTexts[tmpt]
                            self.showSelect.toggle()
                            tmpt = 0
                        }) {
                            Image(systemName: optionImages[tmpt + 3])
                            Text(optionTexts[tmpt + 3])
                        }
                    }
                }.padding()
            }
        }
        // question1
        VStack() {
            Text(question1)
                .padding(.top)
            
            // showSelect1 Tapped
            if showSelect1 {
                HStack {
                    Image(systemName: selectImage1)
                    Text(selectText1)
                }
                VStack {
                    HStack {
                        Button(action: {
                            tmpImage = selectImage1
                            tmpText = selectText1
                            tmp = 0
                            selectImage1 = optionImages1[tmp]
                            selectText1 = optionTexts1[tmp]
                            // 만약 같은 버튼을 눌렀다면 토글 실행하기
                            if tmpImage == selectImage1 || tmpText == selectText1 {
                                self.showSelect1.toggle()
                            }
                            tmp = 0
                            tmpt = tmp
                        }) {
                            Image(systemName: optionImages1[tmp])
                            Text(optionTexts1[tmp])
                        }
                        Button(action: {
                            tmpImage = selectImage1
                            tmpText = selectText1
                            tmp = 1
                            selectImage1 = optionImages1[tmp]
                            selectText1 = optionTexts1[tmp]
                            // 만약 같은 버튼을 눌렀다면 토글 실행하기
                            if tmpImage == selectImage1 && tmpText == selectText1 {
                                self.showSelect1.toggle()
                            }
                            tmp = 0
                            tmpt = tmp
                        }) {
                            Image(systemName: optionImages1[tmp + 1])
                            Text(optionTexts1[tmp + 1])
                        }
                    }
                    HStack {
                        Button(action: {
                            tmpImage = selectImage1
                            tmpText = selectText1
                            tmp = 2
                            selectImage1 = optionImages1[tmp]
                            selectText1 = optionTexts1[tmp]
                            // 만약 같은 버튼을 눌렀다면 토글 실행하기
                            if tmpImage == selectImage1 && tmpText == selectText1 {
                                self.showSelect1.toggle()
                            }
                            tmp = 0
                            tmpt = tmp
                        }) {
                            Image(systemName: optionImages1[tmp + 2])
                            Text(optionTexts1[tmp + 2])
                        }
                        Button(action: {
                            tmpImage = selectImage1
                            tmpText = selectText1
                            tmp = 3
                            selectImage1 = optionImages1[tmp]
                            selectText1 = optionTexts1[tmp]
                            // 만약 같은 버튼을 눌렀다면 토글 실행하기
                            if tmpImage == selectImage1 && tmpText == selectText1 {
                                self.showSelect1.toggle()
                            }
                            tmp = 0
                            tmpt = tmp
                        }) {
                            Image(systemName: optionImages1[tmp + 3])
                            Text(optionTexts1[tmp + 3])
                        }
                    }
                }.padding(.bottom)
            } else {
                // showSelect untapped
                VStack {
                    HStack {
                        Button(action: {
                            tmpt = 0
                            selectImage1 = optionImages1[tmpt]
                            selectText1 = optionTexts1[tmpt]
                            self.showSelect1.toggle()
                            tmpt = 0
                        }) {
                            Image(systemName: optionImages1[tmpt])
                            Text(optionTexts1[tmpt])
                        }
                        Button(action: {
                            tmpt = 1
                            selectImage1 = optionImages1[tmpt]
                            selectText1 = optionTexts1[tmpt]
                            self.showSelect1.toggle()
                            tmpt = 0
                        }) {
                            Image(systemName: optionImages1[tmpt + 1])
                            Text(optionTexts1[tmpt + 1])
                        }
                    }
                    HStack {
                        Button(action: {
                            tmpt = 2
                            selectImage1 = optionImages[tmpt]
                            selectText1 = optionTexts[tmpt]
                            self.showSelect1.toggle()
                            tmpt = 0
                        }) {
                            Image(systemName: optionImages1[tmpt + 2])
                            Text(optionTexts1[tmpt + 2])
                        }
                        Button(action: {
                            tmpt = 3
                            selectImage1 = optionImages1[tmpt]
                            selectText1 = optionTexts1[tmpt]
                            self.showSelect1.toggle()
                            tmpt = 0
                        }) {
                            Image(systemName: optionImages1[tmpt + 3])
                            Text(optionTexts1[tmpt + 3])
                        }
                    }
                }.padding()
            }
        }
        Spacer()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
