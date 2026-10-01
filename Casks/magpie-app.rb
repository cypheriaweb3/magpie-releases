cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.580"
  sha256 arm:   "856718c0772d033bb263177cd593ce3c16630c6e53d5c2525069f34266eff4cd",
         intel: "11353336cfccd324b2cadbad563f1332325cd18a2e36d8127d1c36014de13f80"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
