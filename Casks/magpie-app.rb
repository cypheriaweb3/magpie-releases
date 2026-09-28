cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.225"
  sha256 arm:   "54f4d9a2553f27502e91f8d1a7ab97156aaea035a59316b4fc2f9185e597e01e",
         intel: "f2846a16386ee5e714d918fa1a2fd7b93a2d6d0338d387f6b46336aa865e2b7b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
