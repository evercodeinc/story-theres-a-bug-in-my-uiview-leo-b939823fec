import UIKit

final class LoadingView: UIView {
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16
        return stackView
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Loading..."
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 21, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.color = .gray
        view.startAnimating()
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        
        addSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        self.backgroundColor = .white

        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(activityIndicatorView)
        addSubview(stackView)
    }
    
    private func configureConstraints() {
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
        
    }
}
