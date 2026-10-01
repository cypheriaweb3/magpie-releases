cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.613"
  sha256 arm:   "d192ee682976b352d033bf7f6a6eb116ca1f4d4466922219cb11584c5dd1de37",
         intel: "8be6df258991a78131f0c798fd4018e02f739f83c9b77382a7172b2cd359f878"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
