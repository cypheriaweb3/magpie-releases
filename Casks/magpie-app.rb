cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.545"
  sha256 arm:   "007dfc58b31606aa6b9834aaf35c79e973751cda2fea7894e69f7be1cf9c951f",
         intel: "b0f210140b0744f3fbc02258d6ad27bb5c20bdaa903d7e51146205bf5bd75e29"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
