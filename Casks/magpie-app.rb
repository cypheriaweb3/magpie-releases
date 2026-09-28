cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.300"
  sha256 arm:   "3330e3ed740fffc3509ad3f2fdb16ac2e915134927db839af7795127650d2374",
         intel: "71a17df64a4423ab687061c3473ea973d9f42890e9ba7317c46dc55725e4ae34"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
