cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.258"
  sha256 arm:   "8f03a04f7389da2c478cfe194d6ca41a84a4650a50403a3f4380d2a2905e3871",
         intel: "77cff81377da63ba2db310a30022a0531c0da4a663d2355f6bb4c12eac010dff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
