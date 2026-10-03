cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.705"
  sha256 arm:   "df2bcd3b8ec88b47a6b9142093ca34d81a03fb359c376b81c37ba2ba934e487e",
         intel: "4b49f0226fc0fb740800de2247f638d359be4df1868f8da8b429c8fce526a0e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
